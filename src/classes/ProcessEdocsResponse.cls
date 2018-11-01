public class ProcessEdocsResponse implements Queueable, Database.AllowsCallouts {
    String response;
    
    public ProcessEdocsResponse(String response){
        this.response = response;
    }

    
    public void execute(QueueableContext context) {
        Http altHttp = new Http();
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://edocs.dev.travcorpservices.com/salesforce');
        req.setMethod('POST');
        req.setHeader('x-api-key', 'LR0H3LQzHt3uDxSGo5JpG6y863KrXi9E3AwLQ36G');
        req.setBody(response);
        HttpResponse res = altHttp.send(req);
    }
    
}