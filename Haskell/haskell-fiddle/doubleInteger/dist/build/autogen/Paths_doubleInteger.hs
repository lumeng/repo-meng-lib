module Paths_doubleInteger (
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

bindir     = "/home/lumeng/.cabal/bin"
libdir     = "/home/lumeng/.cabal/lib/x86_64-linux-ghc-7.10.3/doubleInteger-1.0-7pDkHkNmFghLZqjL3yHwug"
datadir    = "/home/lumeng/.cabal/share/x86_64-linux-ghc-7.10.3/doubleInteger-1.0"
libexecdir = "/home/lumeng/.cabal/libexec"
sysconfdir = "/home/lumeng/.cabal/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "doubleInteger_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "doubleInteger_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "doubleInteger_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "doubleInteger_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "doubleInteger_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
