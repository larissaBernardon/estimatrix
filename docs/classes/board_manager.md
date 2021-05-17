# BoardManager

**Sobre:** Classe criada para orquestrar o quadro, possuindo as definições de cada quadrante baseada em seu índice no quadro

---

**Variáveis:**

> ```dart
> final List<String> containerS //Contem todos os índices que representam o size 'S' para estimativa.
> ```
>
> ```dart
> final List<String> containerM //Contem todos os índices que representam o size 'M' para estimativa.
> ```
>
> ```dart
> final List<String> containerL //Contem todos os índices que representam o size 'L' para estimativa.
> ```
>
> ```dart
> final List<String> containerXL //Contem todos os índices que representam o size 'XL' para estimativa.
> ```

---

**Functions**
_getBoardFieldColor:_ Define a cor de cada campo do quadro baseando-se no tamanho de estimativa definido pelo índice.

```dart
Color getBoardFieldColor(String colorId) {
	if(containerXL.contains(colorId)) {
		return Colors.purple.shade800;
	} else if(containerL.contains(colorId)) {
		return Colors.purple.shade700;
	} else if(containerM.contains(colorId)) {
		return Colors.purple.shade500;
	} else if(containerS.contains(colorId)) {
		return Colors.purple.shade300;
	} else {
		return Colors.red;
	}
}
```
