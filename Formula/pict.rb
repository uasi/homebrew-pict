class Pict < Formula
  desc "Pairwise Independent Combinatorial Tool"
  homepage "http://www.pairwise.org"
  url "https://github.com/Microsoft/pict/archive/890a38416093f39c4e9626be0722e309e69f55b4.tar.gz"
  # We appended "+${UTC_COMMIT_DATE}-${SHORT_COMMIT_HASH}"
  version "3.6.0.0+20170126-89a3194"
  sha256 "6a492e37171c984430d67222cee6acb927a05372d54d2a022aa70bc1d2cb42f4"

  head do
    url "https://github.com/Microsoft/pict.git"
  end

  def install
    system "make"
    bin.install "pict"
  end

  test do
    system "#{bin}/pict | grep 'Usage: pict'"
  end
end
