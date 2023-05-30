import scala.io.StdIn.readInt
import chisel3._

import clusterAES._
import clusterSM4._

object Main extends App {
  val selectedModule = args(0)

  selectedModule match {
    case "aes-enc" =>
      emitVerilog(new AESEncModule, Array("--target-dir", "generated"))
    case "aes-dec" =>
      emitVerilog(new AESDecModule, Array("--target-dir", "generated"))
    case "sm4" => 
      emitVerilog(new SM4Module, Array("--target-dir", "generated"))
    case "group-aes" => {
      println("number of encryption modules: ")
      val encNum = readInt()
      assert(encNum >= 0 && encNum <= 4)
      emitVerilog(new clusterAES.Group(encNum), Array("--target-dir", "generated"))
    }
    case "group-sm4" => {
      println("number of encryption modules: ")
      val encNum = readInt()
      assert(encNum >= 0 && encNum <= 4)
      emitVerilog(new clusterSM4.Group(encNum), Array("--target-dir", "generated"))
    }
    case _ => 
      println("invalid args") 
  }
  
}