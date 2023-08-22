import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MusicUi2(),));
}

class MusicUi2 extends StatelessWidget {
  const MusicUi2({super.key});

  @override
  Widget build(BuildContext context) {

    List imageUrl=[
      "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxISEBIPEBAWFRUPEA8QDxUVFRAPEA8PFRUWFhUVFRUYHSggGBolGxUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGxAQGy0lICUtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAOEA4QMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAADAAECBAUHBgj/xABGEAACAQIDAwYKCAUDAwUAAAABAgADEQQSIQUxQQYTIlFhcTJCUnKBgpGhsbIUYpKiwcLR8Acjc9LhM0OTw+LyFRdTY2T/xAAbAQACAwEBAQAAAAAAAAAAAAADBAECBQAGB//EADsRAAEDAQQGCAQFAwUAAAAAAAEAAhEDBBIhMUFRYXGh8AUTIjKBkbHRFMHh8RUzQlJiorLCI2NyktL/2gAMAwEAAhEDEQA/AOSiSEhHEaTiIDHBkAZIGRC5FBjhoIGPedChFzQ+Hw5cXEp3m5sZP5dz1n4wVd5pslMWakKj4OpVxsxj40c7JaxOcab9JeqVwdAQB36mQWqu7MvbrFOvq6+C1WdH0jmOP1Wf/wCnN1iSp7IqMLrY2NjrxmmtSnl0IzX6xa0JyWOZKv8AWY+0LOfaqrWF+qNGtW/DrOHBsHGdOr7rAxuAqUrFxa+6aGz6Yp0i54rnb29ETS5TUsy01HGqC3mLvmTtyrZVpjjqfNXwZLKzrSxjTpJncFdtnZYnVK4ya3CdZw9vAkLHdyxLHeTeMDGEaa8BecvE4lEDQitAiTAkEIrSrVMy1SMoIJZpQT2owK0aMu05n0pdoROqNKMw6FfpCXaIlKjLtGI1EZq0MOs0sOszcPNPDxGpmiHJamHWGddIHDy026IvKE44rOyRQ9opWVEr57tHEnljhZ7WUl1ZUQJICTCyQWReVxSQ7QiLEwkqRnEmFZtMB8FTFMTd2bRvhnsNbVLdu+YoYTd2LXp80UaoFILcQPGiNrLrk7QtSx0mX9GXzC87zqeS32l/tjc6vkn7Q/SbDbLoZ7mqMt+l0lFxD4zZuEyjm3UG/l5viYf4qgCBDsd+G9B/DrYdLfIY/wBJjxWLSxYBvk4W8Kb3I43Wr5yn4zzWJo5XKA3ynQ9YlnZmJqJmFLew1+rbxoS1WcPoODNMHHfKXsdpqNtIbV0XhgBnlozyW/jG5zEMfFpfyV6i3hP78q+rPNbQr56jHhey+aJfw9d6YClQVOYjMDmObfK9SmN/N26+b1A9Q/gYGytFF2vCBHOlP26a9BrW4GZcCDqwxiIEkcVnxwJp08IxGdLOvWtvhH+jnqPsjRtbdXH6JBvRVWASeH1Waq9kKqHql4UD1Sa0DKm1IzejDrPkFUp0z1S1Spnqh6eHlqnQgH2tFHR29Co0zL9GmYqNGXaVGKPtJVhYYTUkl2isVKlLVKnFH2gq3wsI1BZp4YSrRSXqCxN9YqjqMLQw4lphpK9ASyd0TfUKVcxVbRSeWKU6wqLi+eIorxwZ7wBJyCkDHvCaWkROG5XLY0ppJYxkkEknBS1uKIGj3EiFkssCQE0L0KNW1j0ZChSLWAW5JsO+EqjowmCzeL0SfG4gfVhA67TJGtC6oPrgOGjQBrWhitm01Ao0zmqAg16t7UqQ4Ux1mFoutNMtEBiw6bMuq+aZGlhtAvijcvCX1wJCc5pYmw1Fz3CZVSrgGvdOOnSecgMBtXo6Fkaw3mtDTlu2D5nvHTGAGaKBJuekxh0oSyEj5ZQ1CU4yztGKoVcD4yaN91vOiw7XOVhlPxmhaQq0Qfwk9aSIdz9FBsrWm8zDWNB9jtQeak1owqDgYVVlC5E6oIaUpYSnHUQqCCL1Q0wpU0lqmkGglmmIFxQXMRKay1TEAktU4u4oDgrNIS7RlOmZapGLvSrwtGiZYvpKdJofNpF3JNzcU94oPNGlIUXV89xxLe1cFzNZqV7hbMhO8qRp++yQo4bNuM+gCqwtD5wOKz/h6l8sjEIQMIFEK+DIF7yvaVD2u7pRnUn0z2wiGnpJImkHfSEptpIN6Fdly9loRlpSBEQcxF4IXtKaNyMFFqRayjjNnA4YKmXS+bq1It5XV2QdGjly0/Gaz1T2bwn4tB1ceyMXsChbKB4LLppl87LAPc+r2Gff76E/RpUrN/rVc8jpgcxOrcJWmBJWmfR2zSO9innLce1by5RrI3gMrea14q+lUZ3gR4chatG00a35TwdxE+WanHi9EMKqZMuTpeVmPwgiUc4IMUUeSuT2khIiSEgrkRYZIFYZJRyE5HSWEgEhkMEUBwVhJYpmVUMOhgXIDgrdMy1TaUUaHpvAuCXc1aNJ4fPKFN4VqkXLUq5uKNzkaVecinXVa4uIV8S1Ri7m7HeZfwH4TJWauAewnuLSwBkNWX0ZULq0uO8lEY7xKL7zNSoQRoJl1N5gLOZlO28QBjpS4SSSMkkYOSRae0iQ2EsGDHxbtbrI8Ee2AEt4NbNfyQTAVO6U/Z2zUBV+kOkW+qah78sy8en8le2ob+hRNNfBf+lUA9Mo7SS9Onbxq9UdmtoCzGKo3/Ip/pBl6zOjUeLmra2DsqjXomq92cqVc7ijJcC2lr5cvXPKPh9xsBfVAzLmtPX8hX6FVPrZ/aFH5TMbbRqITTDFRSr1EA1BFgrrbss0mzV6jLVUpTpEToEHLCNQAWfaLPSqWVlVwyGJAEkmJmdsmZzxxWZTxVRd1Q+249hlyntpx4SqR9j/ABKRUlcxPjWt0b980+TNdhXVM3QfMrL4puNLjvtHa7afVueWgx4ZbQJ50JOy1bQ2o1jajm3ojSMdhMc5FHo7YpHeGT7w+7+ku0cQjeCyt6xv7I3LTCANTqqoAcFWsANRqL242J9k81kiVGhRtFIVGS2dGfstV3Sdps77lQB22LpPqOC9YBHE81RxLruqH5h7GlyltZx4QU/dMq+wVB3SDw9UxT6aoOwcC3iOGPBbqmEUzKpbUpnfmHvH3ZoUa6t4LBvWN4lUovZ3gQn6dopVe44Hxx8s1bQw6GVkMKjRcqXNVtTCq0qqYZWgiEFzVaVoVGlVWhVaCLUFzVdR5JqkqK8TVIMtQS1G5yKVecjSbqvdXHxNLCjSZoMtUcVlFrT2ldjnDsry9hqspvl50LVprMuqeke+FG0j1CU3a5v1wNCg9pN7BO222UqjGimZxR7iJTARRrqhGazxXMzCt02HXNDAm+YC3geneN0xhLWB8L1TFq9DskytCxWwio1sZlbQHRfulTaYvhlbqqK3zL+MslzkqEaWA798VGhnw+UHXcrG/hqcyzPpuDHBx0EL0FZpqsdTZmWOjfOCLyLYio3aqe27j/qLJ8ptnVWrNzaMVYrUJGtqmUIfcFlGhtWrQZOfpmy3tYZC4YoRrue2Qe2bOO5TKGDUaoZSQjLlDFSLkm1xcarqG4HSRUZaG2rrqbQZGjFuG0cMlnU30HWfqXOiMDPZOvIztGnKV5UYeoBpSzW4gCow9kHQxBpuGBsy336T1Z2phKutVKZbyir02+1b8YZauHYWWpUt1EfSkP2g5+EKbc8CKlE7dXzPhAVG9HtdBp1csu670IjxkqzygpCphM48QrUB6h/4teeJZgdelfjmbMD92dD2WyGlkRgwVbDRlFhoNGudwE8ziuTBXVFdxw5tkuBwurfg0U6OtNOjep1DGOE4Z65jYfHYj26z1KsOZG35R5lYdNbm2mtukzZQPSZIixI6urUe2TrYJl0IqLr/ALlGpTHtXNBIp4Op81wPjaboc12IOCxnUnsEObjvB4D3KkpklkSCN4K+hrRUnF9d2vttp75bRIQSBIB4rQw+JddzH5h75fo7VYeEinu6EoYKkrDUtfxtV/SXFwg62+7M2saN4h7cd0ei2KFK03A6k/A7Z4HBaNHaSHfmHf8A9svUqwO4gzDGFHle6SGHPBok+hQPdcRxTIr2tvfYDuMHnwXoFaEDzDVqq2AJa+7xr274dWrfvm4u6zfyb5qTbBkabp3A/NbAeJnmUHrdfvSJnq9fvpynw38m+ag2r+DvL6rQzx5kZ63lfeSKT8N/Jvmu+K/23+S5/GAjiSUT1pMLyLWylaOBJWkZ16Ve5CUeNHkrkry1s5hmbzTOjfwf5EYfFpVx+NUPTpVDSpU20psyqGeo/lAZgAN2jXvpNilyw5PYnnKJwARaaPzbjD0qRqAcKRpnOhPC+XttFa1QEOaESz1yys0gEwdGa53WSyP2oLd94sFoq/XBPcRPX/w+2KmNxzZlzYfD5qjK1nzqSRTRyLAknU6WOU9c9F/Efk5h/oS4vA0qa/R6rCpzSgKyZube+XeVdQOwZplBrnMJXp6vSNKla20oOQE6iTkVzs1yVC3OW5IGtr8ZUqYCi3+0vounyzqf8Mdl4Wrs162Iw1KqyVq12emlR8qqptdhLOytmbM2vhalTC4X6OUdqSsEp0GSqFDAkUyVdekNDf0SWUnNxYYnVIQq/TVG+6nVpS0GCYBHkQuNvsRPFqMO8Bx+ErVNi1BuZW7+i0vtijlJOYanxbjf1jSdq5bcjaVXCM2Fw9OnVpfzFFNFpmqoHSp6DUkajtA6zC069oxxmNfMqLczo+i9jXMi9OIJAGWJGI06lxPZu0MThib0WqA7xcseG4re27qmYm0mQkKCt2Ymxam+p7CB7p2f+F/JZKlFsZiqQfnujQSoodRTBF3ykcSLDsHbNPkjsjDVa+0kqYai4o456dMNSpuESwOVQR0V7BL03Nm85g7WcEiYykYrPtVrbTLm0qjjc0m6c4kTAOGvHYuKUeU9dfHJ87K/xF5NuUCv/rYWjU7cpRvbrPefwy2Nha+NxSVsLQdURyqtTp1FU86BoCLDTSej5NciMA+Lx+IfDU35vFtQpUSqmhSVadNril4NyW46C2ltZAp2V2IpxuwPmIKi0W60UHljnTABy1xoO/Fce+l4Jv8AZq0z10nDD7xj8zh28HFsOytSb57WE6Vy6bD/AEOsr7DOHrEBKFU0aHNIxYC/PUToQCSBuJEblFybw68nKValhKQxDYbZp5xadNazVHeiGOe17tmN+u5lgGzg9w3kO4uDjxQ/jXwC6kIJjDDHDUR7LmAApVAM6srC7NTN1tcjQ+ibVPL+9Z0ersfZ2xcFSq4zDjE1jlpluaSvUeqQSwph+jTQWPVoOJOvneUu2dl4nD06uCoc1WZukoRaApqN4qqvRYnhlv38CO0tvNvTiMDt+qe6Mt4NTqmsN1xw2a/CduE7VgqZJ62UX33NkXi56pVesFF2/wAk9QlDE4sg7+mwseqinkD63WYpSoGoeeedcLYtlpFBu3nkDxOAKuV8VvANydHI3KPITs/fcFap65SSpDCr+7LNEUrggc88F5t9TrDLjz5q0HjO8Bzvd9lYN6si65DN3kfdEzxStzsaXulU7PIWDHUxNGEezCUiDCleKKEp0iZJIbiVZrXPMNGKHFDHDmMKBkdazWr/AA9X9pXVP4L8rsPSpVdm4uotMVKjVKDOQtNw6hXpFtym4uL78xHAS/8A+1ezsMK1attEikUYUczUk5m+4lr/AMwjgABeceOFJk8LgwrXsPBitS7iQfBTSsdbrARIxz1LvHJGphtlbLfFVqmbnCKzFAOddGYJQAQm4JUq2U7izX3S5yR5QbNxlGtgcPTalTyOXp1QEDrVLByt2N9Tr2tOGNSXmnPmfNCUaYIF4nfgZbFqO6H6x5Lnm87GY2kZTs1ruH8PaQweDxNCo6lqGKxQF2Uc4oVSrdzLY+mTp8oDjtkvUwLLQrtTZebJXNSqjw0U6akeC1vGBsOHExSF470l6t3p0gxWgRCK7oK841HVMZnu4bcJ0qFRLIeGpFuI9E7xyp5ULhHwj5g1KpVenicpDZKZXSpp5LAegnjacKUg6Bh+PsjLTA3AyrXFkp629HttbmEuwbPjMadHFdt2PywpYjaLYbDuv0fD4Mtm0RKlZnp2y3toq3HezdQmRyT5RUKG09pYetUVBiMWalJyQqM46JUtuBIy269eyco5u7a36VMfdZv7o7oLWlzVMhJDoJkO7RgiMsQc5nT5LtOxdhYPZVTE4x8WMtfMVzlFFNMxbKLEmo1yNw4DSec5J0mxdbG42jtI4SpXxLc1S/k1L0RuarQc9LRgAdLWbrnNVoKOuTencazr+WClvQ74cXVJcYEwMhojwC7ltzayYbZ9ZNoYmlXqPTqoqogpNWzLZVFLM1zfe2gHZaZHKLGAcm6WR1zphtmEC4JDK9A7uy05CtFRui5ob9ZxqToQ6fQlwtN/IzlgdkThx3YLtGIq4PbmEpqK4pVKbCplupqUqlirBkJGZDc6jfYa7xPJ8sOTeCwdGnzeKz4gNZ0urM6k6tlX/THfv3b54F6YO+OgC7pDodox1pmzWGpZ3gNqm4DN2B5Tq5EHFPiKxsattzc1T6lcrmLsOvLu9PZKAl/Gi61B3Vh7g5+zkHpMyQ0fsolmHOH185SXSBcKxDsfv9B4QrimSDSoGkxUhi0pIFqs54N6kGah64J6koGFcSFPPFK+eKWuId5qqvvjCJt8Ph6N98JeDGyUNtN1WpDVLDULmXuaHCJSBoIVEJFwNBM+pVLjK9BZrKym26BJ0oJpyVOlCBxxlnKvN5gYJzyAmmUWnERgEBaMHiFtb0w+ftlbE1blfXksDi7nUurFrWeXqEY/6T91P5obC7hK6n+VUHYnzQuEOglXjsnf8giUnTUb/wAf8irBOvshJWL9L0ybPAlqbbUGKO6g+EubvF5X5seb3M4+74PukKiksD3W+oc2rez96yd5YCBgVUuDjJHPqpolje7NpbpW0Hq2kWMfPBEyACVJIAwRFMe8gGizToUBydjIkxrxjLAKt5PeDYyRMgZYIbiiU6mgJ3IbN/SP7Y+gTLr08jMp8UkejgfZNGkelbyxb08JTxw8B+sc2/nppc94yxuymHEa+ffzWV0kyWB+rn24oAaPeDBjgx5ZAKmTIsY5g2lQFBOCjeKNHkqielSvrLAMYmQMScS84rSY0UhDc0XPCU8WQCBxh9nbKqVekoWw33ax9ktNyZxG8c39pv7Yu+vQabrnDxKeZRtN2+0H6LJzxw8PidnVafhJu7QZVAhwWuEtM7ku4VWOh4I3omaQY9IetGMifCX1oVjcfA+hQarzHiP7gr1M9Cr/AE1+YSrjtDTINr0uGnjNLFLwKn9MfOsr4/wKR+qw++f1lKH5g3/4pi2H/QOxoP8AX9UOnjnHG/fLSbUXxlZe7pfpM2KOPs1J2jywWTS6QtNPAOkbcfrxW3SxqHc/t6PxhQpOtpgI1uHV8ZJGtuJHcbdX+Yq+wieyT6+3otGl0yYHWAeEiPOfVbhMgTM1Ma48e/eoMmu0D4yezSCNkqaMU23pSg7ORvHsStIGK8qJjqfG484f2wy1lO5gfWMC6m9uYKap2ilU7rwfFFjR7dkVoNMQmMG0IYMywQyhkyWJW4YeUorL3r4X3SR6sYiOD0Qf/iN/V/eb2wrTDgeeZS1RgewtOXM8JWYDJXiq07MQNynTuOo91o005BxC85BGBSJkGkzBtOUEqMUaKchSEePGjxQLSOKSkjcbe6TFVvKP2jIgRwJ0qzZCcses+0xo9ogJ0q0FNIvvXzm/CTka3i+c35Zdhl3n6FCqiGE7v7mqzTOlT+l+ZYLE/wCkv1WqL8jSVI+H5n5liq60T2VFP2lb+0QLOy8HaE5V7dIt/geBLvkqMUaITUK86E6WvrLD0FtcH95XP5JWhTQPx/N/a0G/XehHonAi5e9U70e3r+Lf2GCZSNIQq44H4/vwvfBlr75zb2kghRU6sYBpadvO1KRkw/79n6RyZYEhDLWnSno1CDoSvpMtjFuON/OVTKTSwjXHzQFZoPagJ2yVHt7AcRqgn7KwuPPFF9XSEGLXiGHvlO0e0VNOmdC0W2muM3TvA+iuisp8YfLCUrXt5Wn6TOAhAltYN1IDIpinankyWj0902KXQHyb0/xT7vwlaaNcZr//AGJceeutvcwmdeOUHXmrKttIMqmMjz6QfFMYxMlBmFShTXiiinKsqwBJASMmIhK1gEgJIRARTpRAITx40QMhWT2gcSdF85vyw0rYzh60NQ/MHOhL2vCi7w9QjIdD3Q1AXDL1pp5y9L4XgRrCUlIIIG6Dfkj0j2hpHyP3WeRY26owl/GUL9NRl8pfJlAi2+P0qgqNlYtps7qD4OWg6wlCCoR+/wB9cgTHVhxlyBGSE0w7AwipiCPd8yt+WNUqXUL5NvkRfyyJZOo/aH6SLEcAfSQ34SgYJkD090Z1Z9wtL5Hj7KYAtr2/AxzSGvS6/wA36D7UCY95N06CqX25FoUmHbHpNY98hGsZJEiCVUOLXBzQrckIKk9x3QqxJ0tMLWpODwCEQCMTHvGvAprLAIqHom29TnX999vtSrils2m5umvmt+zC06ljfhuPdFil0PWhv6h3+/5oSi66/fz6xG9BtTb9GdI59J8gqZkGMkWgyY6sdxCeKRvFJxQ5VmIRrR4ktUblMRRopCvOxOBHAkY85WEalLLA4nhCXgq50hKU3whWkjqyp4arb0fCatFw2omCDDU61uNjOr2e9iFFh6Q6rsuyWyTpcf54wb4dTqU38RpeVqeLNtdRCpil43HviXVvacOC2RaKNQdryPMKFTZ44H8JWqYFh2++XcRXARmUrcKMvHjKmzGxeIqCjh1NSo2oVEQkDixO5VHFjYCFp16o0+azLcLDScA5pxE9mI4lVGQjhIy5tFsTSYJWWxIJW60mSooJGam4BWotwekpI7ZPCIHQFhqc3Z43k7oyLWR3h5LPpUKVd9yiTMT2hGrUTrVKRmg2BHAwT4Fh+7wjbTTOlS+wWhv6Z3KpFeTaiw3j8PjIEdkMHA5FKOY5uYISDGWUrjjp8sq3jyHsDs1elXewyFeDRrykG6oVa57/AHRZ1A6E8y2tPeEcVYaWB0lDAXKdF18per1h8spiuO6Fo18puCD1r1iAexw0JylXpkxOBzjMbYOrd4INXDMBmUEpwcajuJHgnTUGVC3bNwVqbHNYqx3kc4hPrJ4XpkWRTurv/wArD5pZtrjvDnj5iBsQn9Fhxmm8R5+0bsTrKxLxTZ5r/wDTU/5Vil/jG6uP0VPwip+7gP8A0qGtr206+EV5q7P2yqUWovTzKb5TpuPlXmQDBMLiSHNiDhjmFaoKbWtLXTIxERB5y3Kd494OPCQghyJeKQvHkq0ynkau6PFJBgyqvF5pCrxo5EaNysw4YJw0IKxgopBAOalr3NyMIlSrcEW4Tpn8PKN8AgUgZ3rPVQrmWqFqFecdclzlBUBytekpHSVCM05e+6amweU+IwllRs9LNnNFy3Nh9enTIIajU18OmVbvildoDhCpVe55krpPKelz+zsTXq2N8L9JpqDzgSoUwjo7ViS1Z1GIqKGuEtbKizl+Ar2QC3lfEw22OU+JxCimz5aaqiCmpNmCpTpg1GOrkikl76XW9hMumdINlMPMFFslc0Kl8ao9PZbK4lfrCFV1O519tpjCqev8YhXPkyXWM6FsM6WH6hw9lvcwx4hvfBtgx9X3iY4rDtHcYZcaw3VD63SgvhaoyPBMjpOzP744+8K4+zh5SwD7MPDL6Gt80S7QbrB79IVdodafZaSDaGaVBHR9XEiPD2BVJsEw4SDYdhw+M1V2hT45h6t4RcTTO51+T4y3xVYZt4Kn4dZH9x/Ee8rCymMVPVPQlSRewYfbgGww380O8AoPbJFu1jj9kN/Q2p3D7rFuYs56zNU4ZT4q/bv+Mg2FTj8xl/i2HMeiB+F1hk4eZHyWbnbrMU0Po1L9sf0jTviaergq/h9f94/7H2VWRiilkPQnjx4pykJo4jxTjkpamMeKKcuCC28yEUUabks9/eKUUUUlVTPBxRRO0d4blRyUKm72xRTrP3/Bc3NIRGKKOK6UeKKcuSiXfFFJOSr+oKwsi8UUSGa1X91BO+ah8Ad0UUpaNCP0f+tB/wAyMUUAmSmiiikoK//Z",
      "https://images.unsplash.com/photo-1470225620780-dba8ba36b745?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
      "https://images.unsplash.com/photo-1493225457124-a3eb161ffa5f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
      "https://images.unsplash.com/photo-1510915361894-db8b60106cb1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
      "https://images.unsplash.com/photo-1506157786151-b8491531f063?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
      "https://images.unsplash.com/photo-1484876065684-b683cf17d276?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text("Musify..",style: TextStyle(color: Colors.pinkAccent,fontSize: 50,fontWeight: FontWeight.bold),)),
      ),

      backgroundColor: Colors.black,
      body:
          ListView(
            children: [
              Text("Suggested playlists",style: TextStyle(color: Colors.pinkAccent,fontSize: 20,fontWeight: FontWeight.bold),),

              CarouselSlider(items: List.generate(6, (index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage(imageUrl[index])),

                ),
              )),
                  options: CarouselOptions(
                  height: 200,
                  aspectRatio: 16 / 9,
                  viewportFraction: .5,
                  initialPage: 2,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 5),
                  autoPlayCurve: Curves.easeInOutCubicEmphasized,
                  enlargeCenterPage: false,
                  enlargeFactor: .3,
                  scrollDirection: Axis.horizontal
              )),
              Container(
                child: Text("Recommended for you",style: TextStyle(color: Colors.pinkAccent,fontSize: 20,fontWeight: FontWeight.bold),),
              ),
            ],

          ),
      );

  }
}
