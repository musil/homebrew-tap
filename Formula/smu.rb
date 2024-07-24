class Smu < Formula
    desc "Stanislav Musil Utilities"
    homepage "https://smu.dc5.cz"
    version "0.4.8"
  
  
    on_macos do
        if Hardware::CPU.arm?
          url "https://smu.dc5.eu/dist/smu_v0.4.8_darwin_arm64.tar.gz"
          sha256 "a5c1282f656f0bbfa3102b1dddd0cf01b18f69c5ee4a15175e0f6ddbb8f88c51"
    
          def install
            bin.install "smu"
          end
        end
      end
    
      on_linux do
        if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
          url "https://smu.dc5.eu/dist/smu_v0.4.8_linux_arm64.tar.gz"
          sha256 "6f3f6b5fe9a3c65e3e59756eb5e7d09c93772d33b0ba8480eebb0d886d5bb4a7"
    
          def install
            bin.install "smu"
          end
        end
        if Hardware::CPU.intel?
          url "https://smu.dc5.eu/dist/smu_v0.4.8_linux_amd64.tar.gz"
          sha256 "2bea35e5bbfef00669b64efabf8c4de380258bbde953fbb12286da30b131f308"
    
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