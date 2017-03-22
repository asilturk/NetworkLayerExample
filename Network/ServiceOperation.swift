import Foundation

public class ServiceOperation: NetworkOperation {
    
    let service: BackendService
    
    init(service: BackendService = MyBackendService(BackendConfiguration.shared)) {
        self.service = service
        super.init()
    }
    
    override public func cancel() {
        service.cancel()
        super.cancel()
    }
}
