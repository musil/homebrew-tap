class Smu < Formula
    desc "Stanislav Musil Utilities"
    homepage "https://smu.dc5.cz"
    version "0.8.0"
  
  
    on_macos do
        if Hardware::CPU.arm?
          url "https://smu.dc5.eu/dist/smu_v0.8.0_darwin_arm64.tar.gz"
          sha256 "b7b90eb3b74d01a023690ed9903282921d73815daaf64e05ac09dcd97c144dbb"
    
          def install
            bin.install "smu"
          end
        end
      end
    
      on_linux do
        if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
          url "https://smu.dc5.eu/dist/smu_v0.8.0_linux_arm64.tar.gz"
          sha256 "cf5712baa7a0bc94db7f3684d89b89081cd9cd7275465847c6403ee7fdb46f89"
    
          def install
            bin.install "smu"
          end
        end
        if Hardware::CPU.intel?
          url "https://smu.dc5.eu/dist/smu_v0.8.0_linux_amd64.tar.gz"
          sha256 "60662341e16aa3ce64dd3196c9ae0b2b77df8ecff30dc7a4522d7e1b0254854b"
    
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