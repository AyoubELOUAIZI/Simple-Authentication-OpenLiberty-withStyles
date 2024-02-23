
<style>
* {
  font-family: Nunito, sans-serif;
}

.text-blk {
  padding-top: 0px;
  padding-right: 0px;
  padding-bottom: 0px;
  padding-left: 0px;
  line-height: 20px;
  color: white;
  font-size: 14px;
  margin-top: 0px;
  margin-right: 0px;
  margin-bottom: 40px;
  margin-left: 0px;
}

.responsive-container-block {
  min-height: 75px;
  height: fit-content;
  width: 100%;
  padding-top: 10px;
  padding-right: 10px;
  padding-bottom: 10px;
  padding-left: 10px;
  display: flex;
  flex-wrap: wrap;
  margin-top: 0px;
  margin-right: auto;
  margin-bottom: 0px;
  margin-left: auto;
  justify-content: flex-start;
}

.responsive-container-block.bigContainer {
  background-image: initial;
  background-position-x: initial;
  background-position-y: initial;
  background-size: initial;
  background-repeat-x: initial;
  background-repeat-y: initial;
  background-attachment: initial;
  background-origin: initial;
  background-clip: initial;
  background-color: rgb(51, 51, 51);
  padding-top: 10px;
  padding-right: 20px;
  padding-bottom: 10px;
  padding-left: 20px;
  margin: 0 0 0 0;
}

.responsive-container-block.Container {
  max-width: 1320px;
  align-items: center;
  justify-content: center;
  margin-top: 80px;
  margin-right: auto;
  margin-bottom: 80px;
  margin-left: auto;
  padding-top: 10px;
  padding-right: 0px;
  padding-bottom: 10px;
  padding-left: 0px;
}

.responsive-container-block.leftSide {
  width: auto;
  align-items: flex-start;
  padding-top: 10px;
  padding-right: 0px;
  padding-bottom: 10px;
  padding-left: 0px;
  flex-direction: column;
  position: static;
  margin-top: 0px;
  margin-right: auto;
  margin-bottom: 0px;
  margin-left: auto;
  max-width: 300px;
}

.text-blk.heading {
  font-size: 40px;
  line-height: 64px;
  font-weight: 900;
  color: #00B2EB;
  margin-top: 0px;
  margin-right: 0px;
  margin-bottom: 40px;
  margin-left: 0px;
}

.text-blk.btn {
  color: rgb(0, 178, 235);
  background-image: initial;
  background-position-x: initial;
  background-position-y: initial;
  background-size: initial;
  background-repeat-x: initial;
  background-repeat-y: initial;
  background-attachment: initial;
  background-origin: initial;
  background-clip: initial;
  background-color: rgb(255, 255, 255);
  box-shadow: rgba(160, 121, 0, 0.2) 0px 12px 35px;
  border-top-left-radius: 100px;
  border-top-right-radius: 100px;
  border-bottom-right-radius: 100px;
  border-bottom-left-radius: 100px;
  padding-top: 20px;
  padding-right: 50px;
  padding-bottom: 20px;
  padding-left: 50px;
  cursor: pointer;
}

.responsive-container-block.rightSide {
  width: 675px;
  position: relative;
  padding-top: 0px;
  padding-right: 0px;
  padding-bottom: 0px;
  padding-left: 0px;
  display: flex;
  height: 700px;
  min-height: auto;
}

.number1img {
  margin-top: 39%;
  margin-right: 80%;
  margin-bottom: 29%;
  margin-left: 0px;
  height: 32%;
  width: 20%;
  position: absolute;
}

.number2img {
  margin-top: 19%;
  margin-right: 42%;
  margin-bottom: 42%;
  margin-left: 23%;
  width: 35%;
  height: 39%;
  position: absolute;
}

.number3img {
  width: 13%;
  height: 21%;
  position: absolute;
  margin-top: 62%;
  margin-right: 64%;
  margin-bottom: 30%;
  margin-left: 23%;
}

.number4vid {
  width: 44%;
  height: 33%;
  position: absolute;
  margin-top: 62%;
  margin-right: 27%;
  margin-bottom: 0px;
  margin-left: 39%;
  z-index:2;
}

.number5img {
  position: absolute;
  width: 13%;
  height: 21%;
  margin-top: 38%;
  margin-right: 27%;
  margin-bottom: 41%;
  margin-left: 60%;
}

.number6img {
  position: absolute;
  margin-top: 0px;
  margin-right: 3%;
  margin-bottom: 67%;
  margin-left: 62%;
  width: 35%;
  height: 33%;
}

.number7img {
  position: absolute;
  width: 25%;
  margin-top: 40%;
  margin-right: 0px;
  margin-bottom: 18%;
  margin-left: 75%;
  height: 42%;
}

.text-blk.subHeading {
  font-size: 14px;
  line-height: 25px;
}

@media (max-width: 1024px) {
  .responsive-container-block.Container {
    flex-direction: column-reverse;
  }

  .text-blk.heading {
    text-align: center;
    max-width: 370px;
  }

  .text-blk.subHeading {
    text-align: center;
  }

  .responsive-container-block.leftSide {
    align-items: center;
    max-width: 480px;
  }

  .responsive-container-block.rightSide {
    margin-top: 0px;
    margin-right: auto;
    margin-bottom: 100px;
    margin-left: auto;
  }

  .responsive-container-block.rightSide {
    margin: 0 auto 70px auto;
  }
}

@media (max-width: 768px) {
  .responsive-container-block.rightSide {
    width: 450px;
    height: 450px;
  }

  .responsive-container-block.leftSide {
    max-width: 450px;
  }
}

@media (max-width: 500px) {
  .number1img {
    display: none;
  }

  .number2img {
    display: none;
  }

  .number3img {
    display: none;
  }

  .number5img {
    display: none;
  }

  .number6img {
    display: none;
  }

  .number7img {
    display: none;
  }

  .responsive-container-block.rightSide {
    width: 100%;
    height: 250px;
    margin-top: 0px;
    margin-right: 0px;
    margin-bottom: 100px;
    margin-left: 0px;
  }

  .number4vid {
    position: static;
    margin-top: 0px;
    margin-right: auto;
    margin-bottom: 0px;
    margin-left: auto;
    width: 100%;
    height: 100%;
  }

  .text-blk.heading {
    font-size: 25px;
    line-height: 40px;
    max-width: 370px;
    width: auto;
  }

  .text-blk.subHeading {
    font-size: 14px;
    line-height: 25px;
  }

  .responsive-container-block.leftSide {
    width: 100%;
  }
}
</style>


<div class="responsive-container-block bigContainer">
  <div class="responsive-container-block Container">
    <div class="responsive-container-block leftSide">
      <p class="text-blk heading">
The Higher School of Technology, Meknes      </p>
      <p class="text-blk subHeading">
Since 1993, the Higher School of Technology of Meknes has offered vocational training in various disciplines, providing education in electrical engineering, computer engineering, management technology, and communication technology. With 15 departments spanning secondary and tertiary education, it caters to diverse training needs, fostering an interdisciplinary academic environment. Equipped with modern technical infrastructure and a rich library covering various fields such as management, economics, computer science, and engineering, the institution aims to cultivate skilled technicians. Upon completion of two years, students receive a University degree of technology (DUT), while three-year programs grant a professional license since 2014. The teaching staff comprises researchers, secondary school teachers, engineers, and instructors, catering to the demands of the local, regional, and national job markets. The school fosters strong ties with the socio-economic landscape through student internships and professional engagement, ensuring graduates are readily employable. Those who do not continue their studies still find success in their respective fields.    </div>
    <div class="responsive-container-block rightSide">
      <img class="number1img" src="https://res.cloudinary.com/dm9udoven/image/upload/v1698537822/EST%20MEKNES/jkvup6bjhqzj3xdmxdnr.jpg">
      <img class="number2img" src="https://res.cloudinary.com/dm9udoven/image/upload/v1698707602/EST%20MEKNES/kjoredjbvyvqgbjs5t7x.jpg">
      <img class="number3img" src="https://res.cloudinary.com/dm9udoven/image/upload/v1698707809/EST%20MEKNES/tregvglcjvfbjf37eofi.jpg">
      <img class="number5img" src="https://res.cloudinary.com/dm9udoven/image/upload/v1698537822/EST%20MEKNES/jkvup6bjhqzj3xdmxdnr.jpg">
      <iframe allowfullscreen="allowfullscreen" class="number4vid" poster="https://res.cloudinary.com/dm9udoven/image/upload/v1708656534/EST%20MEKNES/ESTM_mjnnev.png" src="https://res.cloudinary.com/dm9udoven/video/upload/v1708656265/EST%20MEKNES/ESTM_-_%C3%89cole_sup%C3%A9rieure_de_technologie_de_Mekn%C3%A8s_%E1%B4%B4%E1%B4%B0_mp31jw.mp4">
      </iframe>
      <img class="number7img" src="https://res.cloudinary.com/dm9udoven/image/upload/v1698537820/EST%20MEKNES/ysdtnzdbsfgelzuefece.jpg">
      <img class="number6img" src="https://res.cloudinary.com/dm9udoven/image/upload/v1708656254/EST%20MEKNES/1583801271990_1_pcxuqp.jpg">
    </div>
  </div>
</div>