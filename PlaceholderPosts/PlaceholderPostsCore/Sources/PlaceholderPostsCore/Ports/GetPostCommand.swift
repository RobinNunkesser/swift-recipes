import Foundation
import ExplicitArchitecture

public protocol GetPostCommand : Command where outDTOType == Post,
                                               inDTOType == ID
{
}
