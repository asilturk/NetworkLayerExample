//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation

final class ___FILEBASENAMEASIDENTIFIER___: ServiceOperation {

    private let request: <#BackendAPIRequest#>

    public var success: ((<#ParsedItem#>) -> Void)?
    public var failure: ((NSError) -> Void)?

//    public init(email: String,
//             password: String,
//              service: BackendService = MyBackendService(BackendConfiguration.shared))
//    {
//        request = <#BackendAPIRequest()#>
//        super.init(service: service)
//    }

    public override func start() {
        super.start()
        service.request(request, success: handleSuccess, failure: handleFailure)
    }

    private func handleSuccess(_ response: Any?) {
        do {
            let item = try SignInResponseMapper.process(response)
            self.success?(item)
            self.finish()
        } catch {
            handleFailure(NSError.cannotParseResponse())
        }
    }

    private func handleFailure(_ error: NSError) {
        self.failure?(error)
        self.finish()
    }
}
