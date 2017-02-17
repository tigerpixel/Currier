//
//  Curry.swift
//  Currier
//
//  Created by Liam on 14/02/2017.
//  Copyright © 2017 Tigerpixel Ltd. All rights reserved.
//

public func curry<First, Second, Result>(_ uncurried: // Declare generic names.

    @escaping (First, Second) -> Result) // Input signature.
    -> (First) -> (Second) -> Result { // Output signature.

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

public func curry<First, Second, Third, Fourth,
                  Fifth, Sixth, Result>(_ uncurried:

    @escaping (First, Second, Third, Fourth,
               Fifth, Sixth) -> Result)
    -> (First) -> (Second) -> (Third) -> (Fourth)
    -> (Fifth) -> (Sixth) -> Result {

        return { first in { second in { third in { fourth
            in { fifth in { sixth in

                            return uncurried(first, second, third, fourth, fifth, sixth)
                        }
                    }
                }
            }
        }
    }
}

public func curry<First, Second, Third, Fourth,
                  Fifth, Sixth, Seventh, Result>(_ uncurried:

    @escaping (First, Second, Third, Fourth,
               Fifth, Sixth, Seventh) -> Result)
    -> (First) -> (Second) -> (Third) -> (Fourth)
    -> (Fifth) -> (Sixth) -> (Seventh) -> Result {

        return { first in { second in { third in { fourth
            in { fifth in { sixth in { seventh in

                                return uncurried(first, second, third, fourth, fifth, sixth, seventh)
                            }
                        }
                    }
                }
            }
        }
    }
}

public func curry<First, Second, Third, Fourth,
                  Fifth, Sixth, Seventh, Eighth, Result>(_ uncurried:

    @escaping (First, Second, Third, Fourth,
               Fifth, Sixth, Seventh, Eighth) -> Result)
    -> (First) -> (Second) -> (Third) -> (Fourth)
    -> (Fifth) -> (Sixth) -> (Seventh) -> (Eighth) -> Result {

        return { first in { second in { third in { fourth
            in { fifth in { sixth in { seventh in { eighth in

                                    return uncurried(first, second, third, fourth,
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

public func curry<First, Second, Third, Fourth,
                  Fifth, Sixth, Seventh, Eighth, Ninth, Result>(_ uncurried:

    @escaping (First, Second, Third, Fourth,
               Fifth, Sixth, Seventh, Eighth, Ninth) -> Result)
    -> (First) -> (Second) -> (Third) -> (Fourth)
    -> (Fifth) -> (Sixth) -> (Seventh) -> (Eighth) -> (Ninth) -> Result {

        return { first in { second in { third in { fourth
            in { fifth in { sixth in { seventh in { eighth in { ninth in

                                        return uncurried(first, second, third, fourth, fifth,
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

                                            return uncurried(first, second, third, fourth, fifth,
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

public func curry<First, Second, Third, Fourth,
                  Fifth, Sixth, Seventh, Eighth, Ninth, Tenth,
                  Eleventh, Result>(_ uncurried:

    @escaping (First, Second, Third, Fourth,
               Fifth, Sixth, Seventh, Eighth,
               Ninth, Tenth, Eleventh) -> Result)
    -> (First) -> (Second) -> (Third) -> (Fourth)
    -> (Fifth) -> (Sixth) -> (Seventh) -> (Eighth)
    -> (Ninth) -> (Tenth) -> (Eleventh) -> Result {

        return { first in { second in { third in { fourth
            in { fifth in { sixth in { seventh in { eighth
            in { ninth in { tenth in { eleventh in

                                                return uncurried(first, second, third, fourth,
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

public func curry<First, Second, Third, Fourth,
                  Fifth, Sixth, Seventh, Eighth,
                  Ninth, Tenth, Eleventh, Twelfth, Result>(_ uncurried:

    @escaping (First, Second, Third, Fourth,
               Fifth, Sixth, Seventh, Eighth,
               Ninth, Tenth, Eleventh, Twelfth) -> Result)
    -> (First) -> (Second) -> (Third) -> (Fourth)
    -> (Fifth) -> (Sixth) -> (Seventh) -> (Eighth)
    -> (Ninth) -> (Tenth) -> (Eleventh) -> (Twelfth) -> Result {

        return { first in { second in { third in { fourth
            in { fifth in { sixth in { seventh in { eighth
            in { ninth in { tenth in { eleventh in { twelfth in

                                                    return uncurried(first, second, third, fourth,
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
