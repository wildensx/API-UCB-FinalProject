package factoryRequests;

public class FactoryRequest {

    public static IRequest make(String type){
        IRequest request;
        switch (type.toLowerCase()){
            case "delete":
                request = new RequestProjectsDELETE();
                break;
            case "put":
                request = new RequestProjectsPUT();
                break;
            case "post":
                request = new RequestProjectsPOST();
                break;
            default:
                request = new RequestProjectsGET();
                break;
        }
        return request;
    }

}
