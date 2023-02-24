package testutil

import chisel3._
import chisel3.util._
import chiseltest._

object TestUtil {

  def initDecoupled(io: Bundle, clk: Clock) = {
    io.elements.foreach { case (name, data) =>
      data match {
        case decoupled: DecoupledIO[_] => {
          decoupled.setSourceClock(clk)
          decoupled.setSinkClock(clk)
        }
        case _ => { }
      }
    }
  }

  def enqueueNoData[T <: Data](d: DecoupledIO[T])(implicit clk: Clock) = {
    d.valid.poke(true)
    while(d.ready.peek().litToBoolean == false) {
      clk.step()
    }
    clk.step()
    d.valid.poke(false)
  }

  def enqueue[T <: Data](d: DecoupledIO[T], data:T)(implicit clk: Clock) = {
    val previous = d.bits.peek()
    d.bits.poke(data)
    enqueueNoData(d)
    d.bits.poke(previous)
  }

  def enqueueSeq[T <: Data](d: DecoupledIO[T], seq: Seq[T])(implicit clk: Clock) = {
    seq.foreach(data => enqueue(d, data))
  }

  def enqueueVec[T <: Data](d: DecoupledIO[Vec[T]], vec: Seq[T])(implicit clk: Clock) = {
    require(d.bits.length == vec.length)
    for(i <- 0 until d.bits.length) {
      d.bits(i).poke(vec(i))
    }
    enqueueNoData(d)
  }

  def enqueueVecSeq[T <: Data](d: DecoupledIO[Vec[T]], seqvec: Seq[Seq[T]])(implicit clk: Clock) = {
    require(seqvec.map(_.length == d.bits.length).reduce(_ & _))
    seqvec.foreach(seq => enqueueVec(d, seq))
  }

}