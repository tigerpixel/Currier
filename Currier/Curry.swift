//
//  Curry.swift
//  Currier
//
//  Created by Liam on 14/02/2017.
//  Copyright © 2017 Tigerpixel Ltd. All rights reserved.
//

public func curry<A,B,Result>(_ uncurried: @escaping (A,B) -> Result) -> (A) -> (B) -> Result {
    
    return { a in { b in
            return uncurried(a,b)
        }
    }
}

public func curry<A,B,C,Result>(_ uncurried: @escaping (A,B,C) -> Result) -> (A) -> (B) -> (C) -> Result {
    
    return { a in { b in { c in
                return uncurried(a,b,c)
            }
        }
    }
}

public func curry<A,B,C,D,Result>(_ uncurried: @escaping (A,B,C,D) -> Result) -> (A) -> (B) -> (C) -> (D) -> Result {
    
    return { a in { b in { c in { d in
                    return uncurried(a,b,c,d)
                }
            }
        }
    }
}

public func curry<A,B,C,D,E,Result>(_ uncurried: @escaping (A,B,C,D,E) -> Result) -> (A) -> (B) -> (C) -> (D) -> (E) -> Result {
    
    return { a in { b in { c in { d in { e in
                        return uncurried(a,b,c,d,e)
                    }
                }
            }
        }
    }
}
