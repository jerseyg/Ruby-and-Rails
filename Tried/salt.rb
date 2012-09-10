require 'digest/md5'

digest = Digest::MD5.hexdigest("Hello World\n")
digest2 = Digest::SHA512.file

  puts digest2
