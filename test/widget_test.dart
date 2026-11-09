import 'package:flutter_test/flutter_test.dart';
import 'package:wisata_candi_anhar/main.dart';
import 'package:wisata_candi_anhar/screens/home_screen.dart';
import 'package:wisata_candi_anhar/widgets/item_card.dart';

void main() {
  testWidgets('HomeScreen smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    // Pastikan HomeScreen tampil
    expect(find.byType(HomeScreen), findsOneWidget);
    expect(find.text('Wisata Candi'), findsOneWidget);

    // Pastikan ItemCard tampil
    expect(find.byType(ItemCard), findsWidgets);
    expect(find.text('Candi Borobudur'), findsOneWidget);
  });
}
