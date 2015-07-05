.class LuA;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/view/View;

.field public c:Lux;

.field public d:F


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    iput-object p1, p0, LuA;->a:Ljava/lang/String;

    .line 392
    iput-object p2, p0, LuA;->b:Landroid/view/View;

    .line 393
    const/4 v0, 0x0

    iput-object v0, p0, LuA;->c:Lux;

    .line 394
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, LuA;->d:F

    .line 395
    return-void
.end method
