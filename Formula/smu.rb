class Smu < Formula
    desc "Stanislav Musil Utilities"
    homepage "https://smu.dc5.cz"
    version "0.9.8"
  
  
    on_macos do
        if Hardware::CPU.arm?
          url "https://smu.dc5.eu/dist/smu_v0.9.8_darwin_arm64.tar.gz"
          sha256 "05507dec6b2ac1026528d720fc8ef3155cbb9934959292e1175a4612102db7cf"
    
          def install
            bin.install "smu"
          end
        end
      end
    
      on_linux do
        if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
          url "https://smu.dc5.eu/dist/smu_v0.9.8_linux_arm64.tar.gz"
          sha256 "a856cb17350228079228d5b9472f631174f3d51c9edcce0b57aad5a30156f4e0"
    
          def install
            bin.install "smu"
          end
        end
        if Hardware::CPU.intel?
          url "https://smu.dc5.eu/dist/smu_v0.9.8_linux_amd64.tar.gz"
          sha256 "bf4240312a8c7a9064781bcc876164b17fb38f820f7585deabdc43ef3a33ce3c"
    
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