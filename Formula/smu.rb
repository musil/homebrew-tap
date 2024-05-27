class Smu < Formula
    desc "Stanislav Musil Utilities"
    homepage "https://smu.dc5.cz"
    version "0.4.6"
  
  
    on_macos do
        if Hardware::CPU.arm?
          url "https://smu.dc5.eu/dist/smu_v0.4.6_darwin_arm64.tar.gz"
          sha256 "fd28335a857c33932c8c938a3d497511cb0ce73bfcd88f8bb2360756b17abbaf"
    
          def install
            bin.install "smu"
          end
        end
      end
    
      on_linux do
        if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
          url "https://smu.dc5.eu/dist/smu_v0.4.6_linux_arm64.tar.gz"
          sha256 "8bf8e8b3ed13e9b620815195942dafd9f2ba520c93473c4c452a177becc1564e"
    
          def install
            bin.install "smu"
          end
        end
        if Hardware::CPU.intel?
          url "https://smu.dc5.eu/dist/smu_v0.4.6_linux_amd64.tar.gz"
          sha256 "cc22280dbb7279750d88deb9211740cda78e14431d9e4d507b094270c0c59ecd"
    
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