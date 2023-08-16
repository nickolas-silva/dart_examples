class HuffmanNode {
  final String? character;
  final int freq;
  HuffmanNode? esq;
  HuffmanNode? dir;

  HuffmanNode(this.character, this.freq);
}

class HuffmanEncoder {
  Map<String, String> codificado = {};

  void _buildCodeTable(HuffmanNode? node, String code) {
    if (node == null) 
      return;
    

    if (node.character != null) {
      codificado[node.character!] = code;
      return;
    }


    _buildCodeTable(node.esq, code + '0');
    _buildCodeTable(node.dir, code + '1');
  }

  void encode(String input) {

    final freqMap = Map<String, int>();
    for (var char in input.runes.map((rune) => String.fromCharCode(rune))) {
      freqMap[char] = (freqMap[char] ?? 0) + 1;
    }

    final priorityQueue = List<HuffmanNode>.from(freqMap.entries.map((entry) => HuffmanNode(entry.key, entry.value)))..sort((a, b) => a.freq.compareTo(b.freq));

    while (priorityQueue.length > 1) {
      final esq = priorityQueue.removeAt(0);
      final dir = priorityQueue.removeAt(0);




      final parent = HuffmanNode(null, esq.freq + dir.freq);
      parent.esq = esq;
      parent.dir = dir;




      priorityQueue.insert(0, parent);
      priorityQueue.sort((a, b) => a.freq.compareTo(b.freq));
    }

    final root = priorityQueue[0];
    _buildCodeTable(root, '');

    final encodedOutput = input.runes
        .map((rune) => codificado[String.fromCharCode(rune)]!)
        .join(' ');

    print(encodedOutput);
  }
}

void main() {
  final encoder = HuffmanEncoder();
  encoder.encode("ABRACADABRA");
}
