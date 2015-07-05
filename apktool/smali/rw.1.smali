.class Lrw;
.super Ljava/lang/Throwable;
.source "SourceFile"


# instance fields
.field final synthetic a:Lrv;

.field private b:I


# direct methods
.method public constructor <init>(Lrv;I)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lrw;->a:Lrv;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 42
    iput p2, p0, Lrw;->b:I

    .line 43
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lrw;->b:I

    return v0
.end method
