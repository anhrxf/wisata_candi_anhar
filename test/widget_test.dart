import 'package:flutter_test/flutter_test.dart';
import 'package:wisata_candi_anhar/main.dart';
import 'package:wisata_candi_anhar/screens/search_screen.dart';

void main() {
  testWidgets('SearchScreen smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    // Pastikan SearchScreen tampil
    expect(find.byType(SearchScreen), findsOneWidget);
    expect(find.text('Pencarian Candi'), findsOneWidget);
    expect(find.text('Cari candi ...'), findsOneWidget);

    // Pastikan daftar candi tampil
    expect(find.text('Candi Borobudur'), findsOneWidget);
  });
}
