class Smu < Formula
    desc "Stanislav Musil Utilities"
    homepage "https://smu.dc5.cz"
    version "0.7.2"
  
  
    on_macos do
        if Hardware::CPU.arm?
          url "https://smu.dc5.eu/dist/smu_v0.7.2_darwin_arm64.tar.gz"
          sha256 "0740e76cd569b848f2c75665de84058330a9fe76811e73fc9f1d9ad725c4f134"
    
          def install
            bin.install "smu"
          end
        end
      end
    
      on_linux do
        if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
          url "https://smu.dc5.eu/dist/smu_v0.7.2_linux_arm64.tar.gz"
          sha256 "11c95164688108dc969e1cd6f044728455448cfaadbfbf13d1e87a0f83b856e8"
    
          def install
            bin.install "smu"
          end
        end
        if Hardware::CPU.intel?
          url "https://smu.dc5.eu/dist/smu_v0.7.2_linux_amd64.tar.gz"
          sha256 "682927f971b4cb0752d6c068770e7a349f699e6e8b21eb49116764efab6f1adf"
    
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