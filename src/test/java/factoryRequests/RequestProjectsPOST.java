package factoryRequests;

import io.restassured.response.Response;

import static io.restassured.RestAssured.given;

public class RequestProjectsPOST implements IRequest{

    @Override
    public Response send(RequestInfo requestInfo) {
        Response response =  given()
                .headers(requestInfo.getHeader())
                .body(requestInfo.getBody())
                .log().all()
                .when()
                .post(requestInfo.getUrl());
        response.then().log().all();

        return response;
    }
}
