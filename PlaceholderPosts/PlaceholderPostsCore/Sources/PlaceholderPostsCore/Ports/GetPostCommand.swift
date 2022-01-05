import Foundation
import CommonPorts

public protocol GetPostCommand : Command where outDTOType == Post,
                                               inDTOType == ID
{
}
