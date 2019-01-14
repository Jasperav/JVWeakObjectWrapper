open class WeakObjectWrapper<T: AnyObject> {
    public weak var obj: T?
    
    public init(obj: T) {
        self.obj = obj
    }
    
    public var isNil: Bool {
        return obj == nil
    }
}

public extension Array where Element: WeakObjectWrapper<AnyObject> {
    mutating func removeNils() {
        self = filter { !$0.isNil }
    }
}
