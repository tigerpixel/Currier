//
//  Curry.swift
//  Currier
//
//  Created by Liam on 14/02/2017.
//  Copyright © 2017 Tigerpixel Ltd. All rights reserved.
//

public func curry<First, Second, Result>(_ uncurried:
    @escaping (First, Second) -> Result)
    -> (First) -> (Second) -> Result {

    return { first in { second in
            return uncurried(first, second)
        }
    }
}

public func curry<First, Second, Third, Result>(_ uncurried:
    @escaping (First, Second, Third) -> Result)
    -> (First) -> (Second) -> (Third) -> Result {

    return { first in { second in { third in
                return uncurried(first, second, third)
            }
        }
    }
}

public func curry<First, Second, Third, Fourth, Result>(_ uncurried:
    @escaping (First, Second, Third, Fourth) -> Result)
    -> (First) -> (Second) -> (Third) -> (Fourth) -> Result {

    return { first in { second in { third in { fourth in
                    return uncurried(first, second, third, fourth)
                }
            }
        }
    }
}

public func curry<First, Second, Third, Fourth, Fifth, Result>(_ uncurried:
    @escaping (First, Second, Third, Fourth, Fifth) -> Result)
    -> (First) -> (Second) -> (Third) -> (Fourth) -> (Fifth) -> Result {

    return { first in { second in { third in { fourth in { fifth in
                        return uncurried(first, second, third, fourth, fifth)
                    }
                }
            }
        }
    }
}
