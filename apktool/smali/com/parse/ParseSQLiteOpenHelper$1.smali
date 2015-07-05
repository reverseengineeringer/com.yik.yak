.class Lcom/parse/ParseSQLiteOpenHelper$1;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/parse/ParseSQLiteOpenHelper;


# direct methods
.method constructor <init>(Lcom/parse/ParseSQLiteOpenHelper;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/parse/ParseSQLiteOpenHelper$1;->this$0:Lcom/parse/ParseSQLiteOpenHelper;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 34
    iget-object v0, p0, Lcom/parse/ParseSQLiteOpenHelper$1;->this$0:Lcom/parse/ParseSQLiteOpenHelper;

    invoke-virtual {v0, p1}, Lcom/parse/ParseSQLiteOpenHelper;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 35
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parse/ParseSQLiteOpenHelper$1;->this$0:Lcom/parse/ParseSQLiteOpenHelper;

    invoke-virtual {v0, p1}, Lcom/parse/ParseSQLiteOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 46
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 56
    invoke-super {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteOpenHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 57
    iget-object v0, p0, Lcom/parse/ParseSQLiteOpenHelper$1;->this$0:Lcom/parse/ParseSQLiteOpenHelper;

    invoke-virtual {v0, p1}, Lcom/parse/ParseSQLiteOpenHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 58
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 40
    iget-object v0, p0, Lcom/parse/ParseSQLiteOpenHelper$1;->this$0:Lcom/parse/ParseSQLiteOpenHelper;

    invoke-virtual {v0, p1}, Lcom/parse/ParseSQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 41
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/parse/ParseSQLiteOpenHelper$1;->this$0:Lcom/parse/ParseSQLiteOpenHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parse/ParseSQLiteOpenHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 51
    return-void
.end method
