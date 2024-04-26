## Sinyal-Frekans-Dönüşümü-MATLAB
# 1- FFT (Fast Fourier Transform )
  En yaygın ve bilinen yöntemdir. Burada detaylı bir teorik bilgi vermeyeceğim ama genel hatlarıyla "fft" fonksiyonunu kullanarak zaman domainindeki bir sinyali frekans domainine dönüştürebilirsiniz.


# 2 Welch Yöntemi: 
  Eğer sinyalin spektral içeriğini belirli bir zaman aralığında görmek istiyorsanız, pwelch fonksiyonunu kullanabilirsiniz. Bu yöntemde pencerelenmiş FFT kullanılır ve bu sayede belirli bir zaman diliminde sinyalin frekans bileşenleri görselleştirilebilir.

# 3 Laplace Dönüşümü (sadece analog sinyaller için):
  Analog sinyaller için, Laplace dönüşümü kullanılarak sinyal zaman domaininden frekans domainine dönüştürülebilir. Matlab'da laplace fonksiyonu ile bu dönüşümü yapabilirsiniz.
# 4 Wavelet Dönüşümü: 
  Eğer sinyalin zaman-frekans özelliklerini görmek istiyorsanız, wavelet dönüşümü kullanılabilir. Matlab'da cwt (continuous wavelet transform) fonksiyonu ile bu dönüşümü gerçekleştirebilirsiniz.

Bu yöntemlerden hangisini kullanacağınız, sinyalin özelliklerine ve analiz amacınıza bağlı olarak değişebilir. Örneğin, belirli frekans bileşenlerini görmek için FFT tercih edilirken, zaman-frekans ayrışımı için wavelet dönüşümü daha uygun olabilir.
