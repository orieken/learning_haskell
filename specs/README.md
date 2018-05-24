# specs

## creating a new spec

* create the new file and add:
```
module Misc.List.ListSpec (main, spec) where --the name of your test module

import Test.Hspec
import Test.QuickCheck

-- `main` is here so that this module can be run from GHCi on its own.  It is
-- not needed for automatic spec discovery.
main :: IO () --
main = hspec spec

spec :: Spec
spec = do
```

* under `test-suite specs-test` in your `.cabal` add your specs module to the `other-modules:` key:
```
test-suite specs-test
  other-modules:       Data.String.StripSpec
                     , Misc.List.ListSpec
```

* run specs with `stack build --test`


## Reference

* [Setting up Haskell](http://www.prigrammer.com/?p=332)
* [bdd-in-haskell-with-hspec](https://www.stackbuilders.com/tutorials/haskell/bdd-in-haskell-with-hspec/)