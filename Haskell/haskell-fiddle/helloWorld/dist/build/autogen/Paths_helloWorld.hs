module Paths_helloWorld (
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
version = Version [1,0] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/meng/.cabal/bin"
libdir     = "/Users/meng/.cabal/lib/x86_64-osx-ghc-7.10.3/helloWorld-1.0-5e7hyXR6gWaJPpbwh4gdgN"
datadir    = "/Users/meng/.cabal/share/x86_64-osx-ghc-7.10.3/helloWorld-1.0"
libexecdir = "/Users/meng/.cabal/libexec"
sysconfdir = "/Users/meng/.cabal/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "helloWorld_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "helloWorld_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "helloWorld_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "helloWorld_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "helloWorld_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
