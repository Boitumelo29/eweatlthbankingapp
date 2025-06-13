abstract class VoucherServiceRepository {
  Future<Map<String, dynamic>> redeemVoucher(String voucher);
}
