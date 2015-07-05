.class public final enum LHJ;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LHJ;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LHJ;

.field public static final enum b:LHJ;

.field public static final enum c:LHJ;

.field public static final enum d:LHJ;

.field public static final enum e:LHJ;

.field public static final enum f:LHJ;

.field public static final enum g:LHJ;

.field private static final synthetic i:[LHJ;


# instance fields
.field public final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 75
    new-instance v0, LHJ;

    const-string v1, "WIFI_MAC_ADDRESS"

    invoke-direct {v0, v1, v6, v4}, LHJ;-><init>(Ljava/lang/String;II)V

    sput-object v0, LHJ;->a:LHJ;

    .line 76
    new-instance v0, LHJ;

    const-string v1, "BLUETOOTH_MAC_ADDRESS"

    invoke-direct {v0, v1, v4, v5}, LHJ;-><init>(Ljava/lang/String;II)V

    sput-object v0, LHJ;->b:LHJ;

    .line 79
    new-instance v0, LHJ;

    const-string v1, "FONT_TOKEN"

    const/16 v2, 0x35

    invoke-direct {v0, v1, v5, v2}, LHJ;-><init>(Ljava/lang/String;II)V

    sput-object v0, LHJ;->c:LHJ;

    .line 80
    new-instance v0, LHJ;

    const-string v1, "ANDROID_ID"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v7, v2}, LHJ;-><init>(Ljava/lang/String;II)V

    sput-object v0, LHJ;->d:LHJ;

    .line 81
    new-instance v0, LHJ;

    const-string v1, "ANDROID_DEVICE_ID"

    const/16 v2, 0x65

    invoke-direct {v0, v1, v8, v2}, LHJ;-><init>(Ljava/lang/String;II)V

    sput-object v0, LHJ;->e:LHJ;

    .line 82
    new-instance v0, LHJ;

    const-string v1, "ANDROID_SERIAL"

    const/4 v2, 0x5

    const/16 v3, 0x66

    invoke-direct {v0, v1, v2, v3}, LHJ;-><init>(Ljava/lang/String;II)V

    sput-object v0, LHJ;->f:LHJ;

    .line 83
    new-instance v0, LHJ;

    const-string v1, "ANDROID_ADVERTISING_ID"

    const/4 v2, 0x6

    const/16 v3, 0x67

    invoke-direct {v0, v1, v2, v3}, LHJ;-><init>(Ljava/lang/String;II)V

    sput-object v0, LHJ;->g:LHJ;

    .line 73
    const/4 v0, 0x7

    new-array v0, v0, [LHJ;

    sget-object v1, LHJ;->a:LHJ;

    aput-object v1, v0, v6

    sget-object v1, LHJ;->b:LHJ;

    aput-object v1, v0, v4

    sget-object v1, LHJ;->c:LHJ;

    aput-object v1, v0, v5

    sget-object v1, LHJ;->d:LHJ;

    aput-object v1, v0, v7

    sget-object v1, LHJ;->e:LHJ;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, LHJ;->f:LHJ;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, LHJ;->g:LHJ;

    aput-object v2, v0, v1

    sput-object v0, LHJ;->i:[LHJ;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 88
    iput p3, p0, LHJ;->h:I

    .line 89
    return-void
.end method
