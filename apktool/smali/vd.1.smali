.class Lvd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lvc;


# direct methods
.method constructor <init>(Lvc;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lvd;->a:Lvc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/View;)I
    .locals 2

    .prologue
    .line 292
    if-ne p1, p2, :cond_0

    .line 293
    const/4 v0, 0x0

    .line 299
    :goto_0
    return v0

    .line 294
    :cond_0
    if-nez p1, :cond_1

    .line 295
    const/4 v0, -0x1

    goto :goto_0

    .line 296
    :cond_1
    if-nez p2, :cond_2

    .line 297
    const/4 v0, 0x1

    goto :goto_0

    .line 299
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 289
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lvd;->a(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    return v0
.end method
