class Smu < Formula
    desc "Stanislav Musil Utilities"
    homepage "https://smu.dc5.cz"
    version "0.9.8"
  
  
    on_macos do
        if Hardware::CPU.arm?
          url "https://smu.dc5.eu/dist/smu_v0.9.8_darwin_arm64.tar.gz"
          sha256 "9ed7647d2b2ae28f3a640e4464a1dd44bed3de103d79f3ecf6dbf12155f5a664"
    
          def install
            bin.install "smu"
          end
        end
      end
    
      on_linux do
        if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
          url "https://smu.dc5.eu/dist/smu_v0.9.8_linux_arm64.tar.gz"
          sha256 "ac594a88833dce99431624411b27d0916b72c8128cf6c4661cde98b44fafbd6c"
    
          def install
            bin.install "smu"
          end
        end
        if Hardware::CPU.intel?
          url "https://smu.dc5.eu/dist/smu_v0.9.8_linux_amd64.tar.gz"
          sha256 "ed3e04496dbb63a11e3ee022c070ef26d72875f94d6b871da74a5bac2da2e11e"
    
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