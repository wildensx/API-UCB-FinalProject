package factoryRequests;

import io.restassured.response.Response;

import static io.restassured.RestAssured.given;

public class RequestProjectsGET implements IRequest {
    @Override
    public Response send(RequestInfo requestInfo) {
        Response response =  given()
                .headers(requestInfo.getHeader())
                .log().all()
                .when()
                .get(requestInfo.getUrl());
        response.then().log().all();

        return response;
    }
}
