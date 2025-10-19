class Smu < Formula
    desc "Stanislav Musil Utilities"
    homepage "https://smu.dc5.cz"
    version "0.7.0"
  
  
    on_macos do
        if Hardware::CPU.arm?
          url "https://smu.dc5.eu/dist/smu_v0.7.0_darwin_arm64.tar.gz"
          sha256 "b40f3e0fe917f0f901528915c5285a7d050eff818e7cd043d59979aa54ef7eba"
    
          def install
            bin.install "smu"
          end
        end
      end
    
      on_linux do
        if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
          url "https://smu.dc5.eu/dist/smu_v0.7.0_linux_arm64.tar.gz"
          sha256 "ca42c96e0fa4e0aca7856f1d24152b605483984fb06bb20204b01db2a80b2c04"
    
          def install
            bin.install "smu"
          end
        end
        if Hardware::CPU.intel?
          url "https://smu.dc5.eu/dist/smu_v0.7.0_linux_amd64.tar.gz"
          sha256 "47a8d85b49fe9cc859fc081e747882f95b0b0f2f415eb95313c4371c57f4d8dd"
    
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