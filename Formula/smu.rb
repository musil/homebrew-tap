class Smu < Formula
    desc "Stanislav Musil Utilities"
    homepage "https://smu.dc5.cz"
    version "0.5.0"
  
  
    on_macos do
        if Hardware::CPU.arm?
          url "https://smu.dc5.eu/dist/smu_v0.5.0_darwin_arm64.tar.gz"
          sha256 "40f0c3e751fba25117c8a91c8ec6d50034a5828ca765d6163191b6431ba9596d"
    
          def install
            bin.install "smu"
          end
        end
      end
    
      on_linux do
        if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
          url "https://smu.dc5.eu/dist/smu_v0.5.0_linux_arm64.tar.gz"
          sha256 "58feb7f86d27979fd0286e9e7f50c6c26c4cbe940c26f4a26710d0a0bdbaeb65"
    
          def install
            bin.install "smu"
          end
        end
        if Hardware::CPU.intel?
          url "https://smu.dc5.eu/dist/smu_v0.5.0_linux_amd64.tar.gz"
          sha256 "5cf3db46299bb489010c94f8caf63a056c9b870a5c2893bbfce1b4974342f71a"
    
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