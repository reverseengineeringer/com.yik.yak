.class Lsk;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lsl;

.field private final b:Landroid/app/Activity;

.field private c:Landroid/graphics/Bitmap;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lsl;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 31
    iput-object p1, p0, Lsk;->b:Landroid/app/Activity;

    .line 32
    iput-object p2, p0, Lsk;->a:Lsl;

    .line 33
    const/high16 v0, -0x1000000

    iput v0, p0, Lsk;->d:I

    .line 34
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 44
    iget-object v0, p0, Lsk;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 49
    :try_start_0
    iget-object v0, p0, Lsk;->c:Landroid/graphics/Bitmap;

    const/16 v1, 0x14

    invoke-static {v0, v1}, LtW;->a(Landroid/graphics/Bitmap;I)V

    .line 50
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lsk;->c:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 51
    invoke-static {}, Lsi;->a()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 63
    :cond_0
    :goto_0
    return-object v3

    .line 55
    :catch_0
    move-exception v0

    iput-object v3, p0, Lsk;->c:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 59
    :catch_1
    move-exception v0

    iput-object v3, p0, Lsk;->c:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lsk;->a:Lsl;

    iget-object v1, p0, Lsk;->c:Landroid/graphics/Bitmap;

    iget v2, p0, Lsk;->d:I

    invoke-interface {v0, v1, v2}, Lsl;->a(Landroid/graphics/Bitmap;I)V

    .line 69
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lsk;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lsk;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 38
    iget-object v0, p0, Lsk;->b:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v2, v2, v1}, LtQ;->a(Landroid/app/Activity;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lsk;->c:Landroid/graphics/Bitmap;

    .line 39
    iget-object v0, p0, Lsk;->c:Landroid/graphics/Bitmap;

    invoke-static {v0}, LtQ;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lsk;->d:I

    .line 40
    return-void
.end method
