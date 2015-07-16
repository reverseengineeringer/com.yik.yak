.class Luk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Luj;


# direct methods
.method constructor <init>(Luj;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Luk;->a:Luj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Luk;->a:Luj;

    invoke-static {v0}, Luj;->a(Luj;)V

    .line 89
    return-void
.end method
