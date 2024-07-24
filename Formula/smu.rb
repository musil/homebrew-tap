class Smu < Formula
    desc "Stanislav Musil Utilities"
    homepage "https://smu.dc5.cz"
    version "0.4.9"
  
  
    on_macos do
        if Hardware::CPU.arm?
          url "https://smu.dc5.eu/dist/smu_v0.4.9_darwin_arm64.tar.gz"
          sha256 "c88494597844a3d43e896777cf4b0f2de04cbbae6b285339aa02e6fb93369230"
    
          def install
            bin.install "smu"
          end
        end
      end
    
      on_linux do
        if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
          url "https://smu.dc5.eu/dist/smu_v0.4.9_linux_arm64.tar.gz"
          sha256 "76c516e007296d31edaaeda5cb8e2912d3d3c9d0a1fc118ab1fe3022e0045328"
    
          def install
            bin.install "smu"
          end
        end
        if Hardware::CPU.intel?
          url "https://smu.dc5.eu/dist/smu_v0.4.9_linux_amd64.tar.gz"
          sha256 "b61beb9b93f1d2dde7464a95a8a2406310c7288c17cd8e37846e76dfe3bbcac2"
    
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