module Paths_haskell_stack_test_project (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/meng/Dropbox/WorkSpace-Dropbox/Computing/repo-meng-lib/Haskell/haskell-stack-test-project/.stack-work/install/x86_64-osx/lts-5.5/7.10.3/bin"
libdir     = "/Users/meng/Dropbox/WorkSpace-Dropbox/Computing/repo-meng-lib/Haskell/haskell-stack-test-project/.stack-work/install/x86_64-osx/lts-5.5/7.10.3/lib/x86_64-osx-ghc-7.10.3/haskell-stack-test-project-0.1.0.0-BCjrGi4SAkj4MdkT4tD42y"
datadir    = "/Users/meng/Dropbox/WorkSpace-Dropbox/Computing/repo-meng-lib/Haskell/haskell-stack-test-project/.stack-work/install/x86_64-osx/lts-5.5/7.10.3/share/x86_64-osx-ghc-7.10.3/haskell-stack-test-project-0.1.0.0"
libexecdir = "/Users/meng/Dropbox/WorkSpace-Dropbox/Computing/repo-meng-lib/Haskell/haskell-stack-test-project/.stack-work/install/x86_64-osx/lts-5.5/7.10.3/libexec"
sysconfdir = "/Users/meng/Dropbox/WorkSpace-Dropbox/Computing/repo-meng-lib/Haskell/haskell-stack-test-project/.stack-work/install/x86_64-osx/lts-5.5/7.10.3/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "haskell_stack_test_project_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "haskell_stack_test_project_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "haskell_stack_test_project_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "haskell_stack_test_project_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "haskell_stack_test_project_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
