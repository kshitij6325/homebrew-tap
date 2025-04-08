class Dailylogger < Formula
  desc "Simple CLI to log your daily accomplishments"
  homepage "https://github.com/kshitij6325/DailyLogger"
  url "https://github.com/kshitij6325/DailyLogger/releases/download/v1.0.0/DailyLogger-1.0.0-all.jar"
  sha256 "a8c75a822a67dbfd486f453abfb67eb19746faf1909b6199c8fdb8308a9116f3"
  license "MIT"

  depends_on "openjdk"

  def install
    libexec.install "DailyLogger-1.0.0-all.jar"
    (bin/"dailylogger").write <<~EOS
      #!/bin/bash
      exec java -jar "#{libexec}/DailyLogger-1.0.0-all.jar" "$@"
    EOS
  end
end
