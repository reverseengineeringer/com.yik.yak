.class Lzd;
.super Ljava/util/zip/Inflater;
.source "SourceFile"


# instance fields
.field final synthetic a:Lzb;


# direct methods
.method constructor <init>(Lzb;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lzd;->a:Lzb;

    invoke-direct {p0}, Ljava/util/zip/Inflater;-><init>()V

    return-void
.end method


# virtual methods
.method public inflate([BII)I
    .locals 2

    .prologue
    .line 68
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    .line 69
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lzd;->needsDictionary()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    sget-object v0, Lzi;->a:[B

    invoke-virtual {p0, v0}, Lzd;->setDictionary([B)V

    .line 71
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    .line 73
    :cond_0
    return v0
.end method
