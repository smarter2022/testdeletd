@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Image($r('app.media.yixiuge'))
          .width(200)
          .animation({
            duration: 100,
            tempo: 3.0,
            delay: 5,
            curve: Curve.Linear,
            playMode: PlayMode.Alternate,
            iterations: 5
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}