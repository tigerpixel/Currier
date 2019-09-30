//
//  Curry.swift
//  Currier
//
//  Created by Liam on 14/02/2017.
//  Copyright © 2017 Tigerpixel Ltd. All rights reserved.
//

/**
 Create a curried version of the two parameter function given as the input parameter.
 
 - parameter uncurried: A function with two parameters. The subject of the curry.
 
 - returns: A curried version of the uncurried input function.
 */
public func curry<First, Second, Result>(_ uncurried: // Declare generic names.

    @escaping (First, Second) -> Result) // Input signature.
    -> (First) -> (Second) -> Result { // Output signature.

    return { (first: First) -> (Second) -> Result in { (second: Second) -> Result in

            uncurried(first, second)
        }
    }
}

/**
 Create a curried version of the three parameter function given as the input parameter.
 
 - parameter uncurried: A function with three parameters. The subject of the curry.
 
 - returns: A curried version of the uncurried input function.
 */
public func curry<First, Second, Third, Result>(_ uncurried:

    @escaping (First, Second, Third) -> Result)
    -> (First) -> (Second) -> (Third) -> Result {

    return { first in { second in { third in

                uncurried(first, second, third)
            }
        }
    }
}

/**
 Create a curried version of the four parameter function given as the input parameter.
 
 - parameter uncurried: A function with four parameters. The subject of the curry.
 
 - returns: A curried version of the uncurried input function.
 */
public func curry<First, Second, Third, Fourth, Result>(_ uncurried:

    @escaping (First, Second, Third, Fourth) -> Result)
    -> (First) -> (Second) -> (Third) -> (Fourth) -> Result {

    return { first in { second in { third in { fourth in

                    uncurried(first, second, third, fourth)
                }
            }
        }
    }
}

/**
 Create a curried version of the five parameter function given as the input parameter.
 
 - parameter uncurried: A function with five parameters. The subject of the curry.
 
 - returns: A curried version of the uncurried input function.
 */
public func curry<First, Second, Third, Fourth, Fifth, Result>(_ uncurried:

    @escaping (First, Second, Third, Fourth, Fifth) -> Result)
    -> (First) -> (Second) -> (Third) -> (Fourth) -> (Fifth) -> Result {

    return { first in { second in { third in { fourth in { fifth in

                        uncurried(first, second, third, fourth, fifth)
                    }
                }
            }
        }
    }
}

/**
 Create a curried version of the six parameter function given as the input parameter.
 
 - parameter uncurried: A function with six parameters. The subject of the curry.
 
 - returns: A curried version of the uncurried input function.
 */
public func curry<First, Second, Third, Fourth, Fifth, Sixth, Result>(_ uncurried:

    @escaping (First, Second, Third, Fourth,
               Fifth, Sixth) -> Result)
    -> (First) -> (Second) -> (Third) -> (Fourth)
    -> (Fifth) -> (Sixth) -> Result {

        return { first in { second in { third in { fourth in { fifth in { sixth in

                            uncurried(first, second, third, fourth, fifth, sixth)
                        }
                    }
                }
            }
        }
    }
}

/**
 Create a curried version of the seven parameter function given as the input parameter.
 
 - parameter uncurried: A function with seven parameters. The subject of the curry.
 
 - returns: A curried version of the uncurried input function.
 */
public func curry<First, Second, Third, Fourth, Fifth, Sixth, Seventh, Result>(_ uncurried:

    @escaping (First, Second, Third, Fourth,
               Fifth, Sixth, Seventh) -> Result)
    -> (First) -> (Second) -> (Third) -> (Fourth)
    -> (Fifth) -> (Sixth) -> (Seventh) -> Result {

        return { first in { second in { third in { fourth in { fifth in { sixth in { seventh in

                                uncurried(first, second, third, fourth, fifth, sixth, seventh)
                            }
                        }
                    }
                }
            }
        }
    }
}

/**
 Create a curried version of the eight parameter function given as the input parameter.
 
 - parameter uncurried: A function with eight parameters. The subject of the curry.
 
 - returns: A curried version of the uncurried input function.
 */
public func curry<First, Second, Third, Fourth, Fifth, Sixth, Seventh, Eighth, Result>(_ uncurried:

    @escaping (First, Second, Third, Fourth,
               Fifth, Sixth, Seventh, Eighth) -> Result)
    -> (First) -> (Second) -> (Third) -> (Fourth)
    -> (Fifth) -> (Sixth) -> (Seventh) -> (Eighth) -> Result {

        return { first in { second in { third in { fourth
            in { fifth in { sixth in { seventh in { eighth in

                                    uncurried(first, second, third, fourth,
                                              fifth, sixth, seventh, eighth)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

/**
 Create a curried version of the nine parameter function given as the input parameter.
 
 - parameter uncurried: A function with nine parameters. The subject of the curry.
 
 - returns: A curried version of the uncurried input function.
 */
public func curry<First, Second, Third, Fourth, Fifth, Sixth, Seventh, Eighth, Ninth, Result>(_ uncurried:

    @escaping (First, Second, Third, Fourth,
               Fifth, Sixth, Seventh, Eighth, Ninth) -> Result)
    -> (First) -> (Second) -> (Third) -> (Fourth)
    -> (Fifth) -> (Sixth) -> (Seventh) -> (Eighth) -> (Ninth) -> Result {

        return { first in { second in { third in { fourth
            in { fifth in { sixth in { seventh in { eighth in { ninth in

                                        uncurried(first, second, third, fourth, fifth,
                                                  sixth, seventh, eighth, ninth)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

/**
 Create a curried version of the ten parameter function given as the input parameter.
 
 - parameter uncurried: A function with ten parameters. The subject of the curry.
 
 - returns: A curried version of the uncurried input function.
 */
public func curry<First, Second, Third, Fourth, Fifth, Sixth, Seventh, Eighth, Ninth, Tenth, Result>(_ uncurried:

    @escaping (First, Second, Third, Fourth,
               Fifth, Sixth, Seventh, Eighth,
               Ninth, Tenth) -> Result)
    -> (First) -> (Second) -> (Third) -> (Fourth)
    -> (Fifth) -> (Sixth) -> (Seventh) -> (Eighth)
    -> (Ninth) -> (Tenth) -> Result {

        return { first in { second in { third in { fourth
            in { fifth in { sixth in { seventh in { eighth
            in { ninth in { tenth in

                                            uncurried(first, second, third, fourth, fifth,
                                                      sixth, seventh, eighth, ninth, tenth)
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

/**
 Create a curried version of the eleven parameter function given as the input parameter.
 
 - parameter uncurried: A function with eleven parameters. The subject of the curry.
 
 - returns: A curried version of the uncurried input function.
 */
public func curry<First, Second, Third, Fourth, Fifth, Sixth, Seventh,
                  Eighth, Ninth, Tenth, Eleventh, Result>(_ uncurried:

    @escaping (First, Second, Third, Fourth,
               Fifth, Sixth, Seventh, Eighth,
               Ninth, Tenth, Eleventh) -> Result)
    -> (First) -> (Second) -> (Third) -> (Fourth)
    -> (Fifth) -> (Sixth) -> (Seventh) -> (Eighth)
    -> (Ninth) -> (Tenth) -> (Eleventh) -> Result {

        return { first in { second in { third in { fourth
            in { fifth in { sixth in { seventh in { eighth
            in { ninth in { tenth in { eleventh in

                                                uncurried(first, second, third, fourth,
                                                          fifth, sixth, seventh, eighth,
                                                          ninth, tenth, eleventh)
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

/**
 Create a curried version of the twelve parameter function given as the input parameter.
 
 - parameter uncurried: A function with twelve parameters. The subject of the curry.
 
 - returns: A curried version of the uncurried input function.
 */
public func curry<First, Second, Third, Fourth, Fifth, Sixth, Seventh,
                  Eighth, Ninth, Tenth, Eleventh, Twelfth, Result>(_ uncurried:

    @escaping (First, Second, Third, Fourth,
               Fifth, Sixth, Seventh, Eighth,
               Ninth, Tenth, Eleventh, Twelfth) -> Result)
    -> (First) -> (Second) -> (Third) -> (Fourth)
    -> (Fifth) -> (Sixth) -> (Seventh) -> (Eighth)
    -> (Ninth) -> (Tenth) -> (Eleventh) -> (Twelfth) -> Result {

        return { first in { second in { third in { fourth
            in { fifth in { sixth in { seventh in { eighth
            in { ninth in { tenth in { eleventh in { twelfth in

                                                    uncurried(first, second, third, fourth,
                                                              fifth, sixth, seventh, eighth,
                                                              ninth, tenth, eleventh, twelfth)
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

/**
 Create a curried version of the thirteen parameter function given as the input parameter.
 
 - parameter uncurried: A function with thirteen parameters. The subject of the curry.
 
 - returns: A curried version of the uncurried input function.
 */
public func curry<First, Second, Third, Fourth, Fifth, Sixth, Seventh,
                  Eighth, Ninth, Tenth, Eleventh, Twelfth, Thirteenth, Result>(_ uncurried:

    @escaping (First, Second, Third, Fourth,
    Fifth, Sixth, Seventh, Eighth,
    Ninth, Tenth, Eleventh, Twelfth, Thirteenth) -> Result)
    -> (First) -> (Second) -> (Third) -> (Fourth)
    -> (Fifth) -> (Sixth) -> (Seventh) -> (Eighth)
    -> (Ninth) -> (Tenth) -> (Eleventh) -> (Twelfth)
    -> (Thirteenth) -> Result {

        return { first in { second in { third in { fourth
            in { fifth in { sixth in { seventh in { eighth
            in { ninth in { tenth in { eleventh in { twelfth in { thirteenth in

                                                        uncurried(first, second, third, fourth,
                                                                  fifth, sixth, seventh, eighth,
                                                                  ninth, tenth, eleventh, twelfth, thirteenth)
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

/**
 Create a curried version of the fourteen parameter function given as the input parameter.
 
 - parameter uncurried: A function with fourteen parameters. The subject of the curry.
 
 - returns: A curried version of the uncurried input function.
 */
public func curry<First, Second, Third, Fourth, Fifth, Sixth, Seventh,
                  Eighth, Ninth, Tenth, Eleventh, Twelfth, Thirteenth, Fourteenth, Result>(_ uncurried:

    @escaping (First, Second, Third, Fourth,
    Fifth, Sixth, Seventh, Eighth,
    Ninth, Tenth, Eleventh, Twelfth,
    Thirteenth, Fourteenth) -> Result)
    -> (First) -> (Second) -> (Third) -> (Fourth)
    -> (Fifth) -> (Sixth) -> (Seventh) -> (Eighth)
    -> (Ninth) -> (Tenth) -> (Eleventh) -> (Twelfth)
    -> (Thirteenth) -> (Fourteenth) -> Result {

        return { first in { second in { third in { fourth
            in { fifth in { sixth in { seventh in { eighth
            in { ninth in { tenth in { eleventh in { twelfth
            in { thirteenth in { fourteenth in

                                                            uncurried(first, second, third, fourth,
                                                                      fifth, sixth, seventh, eighth,
                                                                      ninth, tenth, eleventh, twelfth,
                                                                      thirteenth, fourteenth)
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
