.class Lwj;
.super Lwh;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lwh;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 0

    .prologue
    .line 12
    invoke-virtual {p1, p2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 13
    return-void
.end method

.method b(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 0

    .prologue
    .line 17
    invoke-virtual {p1, p2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 18
    return-void
.end method
