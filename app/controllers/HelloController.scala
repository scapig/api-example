package controllers

import javax.inject.{Inject, Singleton}

import play.api.libs.json.Json
import play.api.mvc.{AbstractController, ControllerComponents}

import scala.concurrent.Future

@Singleton
class HelloController  @Inject()(cc: ControllerComponents) extends AbstractController(cc) {

  def world() = Action.async { implicit request =>
    Future.successful(Ok(Json.obj("message" -> "Hello World")))
  }

  def application() = Action.async { implicit request =>
    Future.successful(Ok(Json.obj("message" -> "Hello Application")))
  }

  def user() = Action.async { implicit request =>
    Future.successful(Ok(Json.obj("message" -> "Hello User")))
  }
}
