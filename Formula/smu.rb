class Smu < Formula
    desc "Stanislav Musil Utilities"
    homepage "https://smu.dc5.cz"
    version "0.9.5"
  
  
    on_macos do
        if Hardware::CPU.arm?
          url "https://smu.dc5.eu/dist/smu_v0.9.5_darwin_arm64.tar.gz"
          sha256 "8d8b0fca9bcc01debb773be5b4a851f026c83cf420f6d6380daab4f7c3a82204"
    
          def install
            bin.install "smu"
          end
        end
      end
    
      on_linux do
        if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
          url "https://smu.dc5.eu/dist/smu_v0.9.5_linux_arm64.tar.gz"
          sha256 "e1cf777028ad0f46e2f3796f7914b358addfa2a4d48e76869b65d33a05f334bf"
    
          def install
            bin.install "smu"
          end
        end
        if Hardware::CPU.intel?
          url "https://smu.dc5.eu/dist/smu_v0.9.5_linux_amd64.tar.gz"
          sha256 "8c01c7d9ec26a08372d2b64d50270cd1c2555988f02fd1d0d1ab774eb1141dbf"
    
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