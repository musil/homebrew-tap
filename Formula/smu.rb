class Smu < Formula
    desc "Stanislav Musil Utilities"
    homepage "https://smu.dc5.cz"
    version "0.4.7"
  
  
    on_macos do
        if Hardware::CPU.arm?
          url "https://smu.dc5.eu/dist/smu_v0.4.7_darwin_arm64.tar.gz"
          sha256 "9eadd108c6818f771366faaec38bf284bd0bb64e0f4698df41d20e5dd3faf0fa"
    
          def install
            bin.install "smu"
          end
        end
      end
    
      on_linux do
        if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
          url "https://smu.dc5.eu/dist/smu_v0.4.7_linux_arm64.tar.gz"
          sha256 "f477c786549def96d4a86a35a6c33455c20fed78e18681c806b842e40582cea5"
    
          def install
            bin.install "smu"
          end
        end
        if Hardware::CPU.intel?
          url "https://smu.dc5.eu/dist/smu_v0.4.7_linux_amd64.tar.gz"
          sha256 "3461f49843782e8997f6fc7c998c59a8f8335729cf6faa75b255aa13daec0193"
    
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