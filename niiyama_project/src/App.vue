<template>
  <div id="app">
    <img src="./assets/logo.png">
    <h1>{{ msg }}</h1>
    <h2>新山詩織さんへの想いをツイートで共有しよう</h2>
    <ul>
    </ul>
    <h2>メールで想いを伝えてみよう</h2>
    <ul>
    </ul>
    <h2>お手紙で想いを伝えてみよう</h2>
  </div>
</template>

<script>
export default {
  name: 'app',
  data () {
    return {
      msg: '#あたしと新山詩織 プロジェクト'
    }
  }
}
</script>

<style lang="scss">
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}

h1, h2 {
  font-weight: normal;
}

ul {
  list-style-type: none;
  padding: 0;
}

li {
  display: inline-block;
  margin: 0 10px;
}

a {
  color: #42b983;
}
</style>
