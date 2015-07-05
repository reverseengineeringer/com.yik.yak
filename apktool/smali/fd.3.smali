.class Lfd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lfb;


# direct methods
.method constructor <init>(Lfb;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lfd;->a:Lfb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lfd;->a:Lfb;

    invoke-static {v0}, Lfb;->a(Lfb;)V

    .line 246
    return-void
.end method
