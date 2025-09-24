@EndUserText.label: 'Material Documents (Header + Items JSON)'
@ObjectModel.query.implementedBy: 'ABAP:ZCL_GOODS_RECEIPT_FORM_QUERY'
@Metadata.allowExtensions: true
define root custom entity ZC_Goods_Receipt_Form
{
    @Consumption.filter: { mandatory: true, multipleSelections: true }
    key MaterialDocument     : mblnr;          // MBLNR - Material Document Number

    @Consumption.filter: { mandatory: true, multipleSelections: false }
    key FiscalYear           : gjahr;          // GJAHR - Fiscal Year

    @Consumption.filter: { multipleSelections: true }
    CompanyCode              : bukrs;          // BUKRS - Company Code

    @Consumption.filter: { multipleSelections: true }
    PurchaseOrderNumber      : ebeln;          // EBELN - Purchase Order Number

    @Consumption.filter: { multipleSelections: true }
    NumberOfReservation      : rsnum;          // RSNUM - Reservation Number

    @Consumption.filter: { multipleSelections: true }
    MaterialDocumentDate     : budat;          // BUDAT - Posting Date (thay vì BLDAT)

    @Consumption.filter: { multipleSelections: true }
    VendorName               : abap.char(50);  // Supplier Full Name (thay vì char(100), dùng supplierfullname)

    @Consumption.filter: { multipleSelections: true }
    PlantName                : abap.char(60);  // T001W-NAME2 - Plant Name

    @Consumption.filter: { multipleSelections: true }
    DocumentHeaderText       : abap.char(50);  // BKTXT - Document Header Text

    @Consumption.filter: { multipleSelections: true }
    PostingDate              : budat;          // BUDAT - Posting Date

    // Fields not intended for filtering (optional fields, có thể xóa nếu không cần)
    Shipper                  : abap.char(100); // Shipper Name (chưa có trong query)
    Cashier                  : abap.char(100); // Cashier Name (chưa có trong query)
    Director                 : abap.char(100); // Director Name (chưa có trong query)

    // Line items as JSON string
    LineItemsJson             : abap.string;   // JSON representation of line items
}
