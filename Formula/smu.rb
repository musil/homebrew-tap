class Smu < Formula
    desc "Stanislav Musil Utilities"
    homepage "https://smu.dc5.cz"
    version "0.5.4"
  
  
    on_macos do
        if Hardware::CPU.arm?
          url "https://smu.dc5.eu/dist/smu_v0.5.4_darwin_arm64.tar.gz"
          sha256 "5b945c331c61b51dd5edac09d2debcc8707f9ee32f7ad437c76cd4dcddb3549f"
    
          def install
            bin.install "smu"
          end
        end
      end
    
      on_linux do
        if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
          url "https://smu.dc5.eu/dist/smu_v0.5.4_linux_arm64.tar.gz"
          sha256 "3c9124514911327b8916c7efb7b8a45bd1f87d69329ed7b1345b9e984006a360"
    
          def install
            bin.install "smu"
          end
        end
        if Hardware::CPU.intel?
          url "https://smu.dc5.eu/dist/smu_v0.5.4_linux_amd64.tar.gz"
          sha256 "92c3b2fad72d7a65fc2071eb68414f9097f160afaab1c043fc62027b10e9586e"
    
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