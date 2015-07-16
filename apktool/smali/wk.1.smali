.class Lwk;
.super Lwh;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lwh;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p2, Landroid/graphics/Point;->x:I

    .line 11
    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p2, Landroid/graphics/Point;->y:I

    .line 12
    return-void
.end method

.method b(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p2, Landroid/graphics/Point;->x:I

    .line 17
    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p2, Landroid/graphics/Point;->y:I

    .line 18
    return-void
.end method
