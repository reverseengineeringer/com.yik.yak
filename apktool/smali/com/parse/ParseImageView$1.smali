.class Lcom/parse/ParseImageView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LM",
        "<[B",
        "LN",
        "<[B>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseImageView;

.field final synthetic val$loadingFile:Lcom/parse/ParseFile;


# direct methods
.method constructor <init>(Lcom/parse/ParseImageView;Lcom/parse/ParseFile;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/parse/ParseImageView$1;->this$0:Lcom/parse/ParseImageView;

    iput-object p2, p0, Lcom/parse/ParseImageView$1;->val$loadingFile:Lcom/parse/ParseFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LN;)LN;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN",
            "<[B>;)",
            "LN",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 137
    invoke-virtual {p1}, LN;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 138
    iget-object v1, p0, Lcom/parse/ParseImageView$1;->this$0:Lcom/parse/ParseImageView;

    # getter for: Lcom/parse/ParseImageView;->file:Lcom/parse/ParseFile;
    invoke-static {v1}, Lcom/parse/ParseImageView;->access$000(Lcom/parse/ParseImageView;)Lcom/parse/ParseFile;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParseImageView$1;->val$loadingFile:Lcom/parse/ParseFile;

    if-eq v1, v2, :cond_1

    .line 141
    invoke-static {}, LN;->h()LN;

    move-result-object p1

    .line 149
    :cond_0
    :goto_0
    return-object p1

    .line 143
    :cond_1
    if-eqz v0, :cond_0

    .line 144
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_0

    .line 146
    iget-object v1, p0, Lcom/parse/ParseImageView$1;->this$0:Lcom/parse/ParseImageView;

    invoke-virtual {v1, v0}, Lcom/parse/ParseImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/parse/ParseImageView$1;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
