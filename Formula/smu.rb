class Smu < Formula
    desc "Stanislav Musil Utilities"
    homepage "https://smu.dc5.cz"
    version "0.6.1"
  
  
    on_macos do
        if Hardware::CPU.arm?
          url "https://smu.dc5.eu/dist/smu_v0.6.1_darwin_arm64.tar.gz"
          sha256 "e7b76a66831e8b44565717fd9632a9692569b9c02bae42dfcc28c7297121ac36"
    
          def install
            bin.install "smu"
          end
        end
      end
    
      on_linux do
        if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
          url "https://smu.dc5.eu/dist/smu_v0.6.1_linux_arm64.tar.gz"
          sha256 "67c5adda43e3c636e27c48f018b5ccc7dc1de0c6296eb7bcc7f155eaa5ff3526"
    
          def install
            bin.install "smu"
          end
        end
        if Hardware::CPU.intel?
          url "https://smu.dc5.eu/dist/smu_v0.6.1_linux_amd64.tar.gz"
          sha256 "877ed0f73661f0981a5fa3559d2086a1bb2698604a9724b16a1d25ce3977a41c"
    
          def install
            bin.install "smu"
          end
        end
      end
 
  def caveats
    <<~EOS
      How to use this binary: https://smu.dc5.cz/
    EOS
  end

  test do
    system "#{bin}/smu version"
  end
end