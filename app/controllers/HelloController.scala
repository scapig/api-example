package controllers

import javax.inject.{Inject, Singleton}

import play.api.libs.json.Json
import play.api.mvc.{AbstractController, ControllerComponents}

import scala.concurrent.ExecutionContext.Implicits.global
import scala.concurrent.Future

@Singleton
class HelloController  @Inject()(cc: ControllerComponents) extends AbstractController(cc) {

  def hello() = Action.async { implicit request =>
    Future.successful(Ok("ssss"))
  }
}
