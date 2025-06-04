class Smu < Formula
    desc "Stanislav Musil Utilities"
    homepage "https://smu.dc5.cz"
    version "0.6.2"
  
  
    on_macos do
        if Hardware::CPU.arm?
          url "https://smu.dc5.eu/dist/smu_v0.6.2_darwin_arm64.tar.gz"
          sha256 "db7b188a9c0eb28d47b4881dcaf6b6580ebd2984c3d7aedfe07250ba1939cbbe"
    
          def install
            bin.install "smu"
          end
        end
      end
    
      on_linux do
        if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
          url "https://smu.dc5.eu/dist/smu_v0.6.2_linux_arm64.tar.gz"
          sha256 "12620882eefa6dc893faf9cdbd2bab3fd7a837b25cf3ee520ec2a6c73ca2e5ef"
    
          def install
            bin.install "smu"
          end
        end
        if Hardware::CPU.intel?
          url "https://smu.dc5.eu/dist/smu_v0.6.2_linux_amd64.tar.gz"
          sha256 "ea53be5717c0cbe0e58ea71389173cbdcd99b61a6cd5eb50426751578b37320c"
    
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